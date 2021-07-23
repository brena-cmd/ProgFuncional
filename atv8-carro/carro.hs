import Debug.Trace ( trace )
import Data.Function ( (&) )

data Car = Car  { pass :: Int
                , maxPass :: Int
                , gas :: Int
                , maxGas :: Int
                , km :: Int
                } deriving (Eq, Show, Read)


data Op = Op { name :: String
             , result :: Bool
             } deriving (Eq, Show, Read)

data Info = Info { car :: Car
                 , op  :: Op
                 } deriving (Eq, Show, Read)


toString (Info (Car pass maxPass gas maxGas km) (Op name result)) =
                "Car pass: " ++ show pass ++ "/" ++ show maxPass
                 ++ " gas: " ++ show gas  ++ "/" ++ show maxGas
                 ++  " km: " ++ show km
                 ++ " Operation: " ++ name ++ " Result: " ++ show result

resume :: Info -> Info
resume info = trace (toString info) info

-- cria um carro passando maxPass e maxGas - retorna sempre true.
createCar :: Int -> Int -> Info
createCar maxPass maxGas = Info (Car 0 maxPass 0 maxGas 0) (Op "Createcar" True )

-- enche o tanque passando a qtd de gas. Retorna falso apenas se o tanque já estiver completamente cheio.
fuel :: Int -> Info -> Info
fuel gasolina (Info (Car pass maxPass gas maxGas km) op) = Info(Car pass maxPass tanque maxGas km) (Op "fuel" sucess)
        where
            sucess = if gas == maxGas then False else True  
            tanque
                | sucess == False = gas
                | gasolina+gas > maxGas = maxGas
                | otherwise  =  gas + gasolina

-- Faz entrar uma pessoa no carro. Retorna false se já estiver lotado.
embark :: Info -> Info
embark (Info (Car pass maxPass gas maxGas km) op) = Info (Car novoPass maxPass gas maxGas km) (Op "embark" sucess )
    where
        sucess = if novoPass == pass then False else True
        novoPass = if pass == maxPass then pass else pass + 1

-- Retira uma pessoa do carro, retorna false se não tiver ninguém no carro
disembark :: Info -> Info
disembark (Info (Car pass maxPass gas maxGas km) op) = Info (Car novoPass maxPass gas maxGas km) (Op "disembark" sucess )
    where    
        sucess = if novoPass == pass then False else True
        novoPass = if pass == 0 then 0 else pass - 1

-- dirige diminuindo a gasolina e aumentando km. 
-- Só é possível dirigir se houver alguém no carro e houver alguma gasolina.
-- Aumenta a km da gasolina gasta.
-- retorna false se não há ninguém no carro ou se não tinha gasolina para completar a viagem.
drive :: Int -> Info -> Info
drive distancia (Info (Car pass maxPass gas maxGas km) op) = Info novoCarro (Op "drive" sucess)
    where
        sucess = if distancia > gas || pass == 0 || gas == 0 then False else True 
        novoCarro
            | distancia > gas || pass == 0 || gas == 0 = Car pass maxPass gas maxGas km
            | otherwise = Car pass maxPass (gas-distancia) maxGas (km+distancia)


main = do
    let res = createCar 2 50
            & resume & embark
            & resume & disembark
            & resume & disembark
            & resume & drive 10
            & resume & embark
            & resume & embark
            & resume & embark
            & resume & drive 10
            & resume & fuel 30
            & resume & fuel 30
            & resume & fuel 30
            & resume & drive 30
            & resume & drive 30
            & resume
    print res


--main = print $ resume . embark . resume. embark . resume $ createCar 2 50


{-
Car pass: 0/2 gas: 0/50 km: 0 Operation: create Result: True
Car pass: 1/2 gas: 0/50 km: 0 Operation: embark Result: True
Car pass: 0/2 gas: 0/50 km: 0 Operation: disembark Result: True
Car pass: 0/2 gas: 0/50 km: 0 Operation: disembark Result: False
Car pass: 0/2 gas: 0/50 km: 0 Operation: drive Result: False
Car pass: 1/2 gas: 0/50 km: 0 Operation: embark Result: True
Car pass: 2/2 gas: 0/50 km: 0 Operation: embark Result: True
Car pass: 2/2 gas: 0/50 km: 0 Operation: embark Result: False
Car pass: 2/2 gas: 0/50 km: 0 Operation: drive Result: False
Car pass: 2/2 gas: 30/50 km: 0 Operation: fuel Result: True
Car pass: 2/2 gas: 50/50 km: 0 Operation: fuel Result: True
Car pass: 2/2 gas: 50/50 km: 0 Operation: fuel Result: False
Car pass: 2/2 gas: 20/50 km: 30 Operation: drive Result: True
Car pass: 2/2 gas: 0/50 km: 50 Operation: drive Result: False
Info {car = Car {pass = 2, maxPass = 2, gas = 0, maxGas = 50, km = 50}, op = Op {name = "drive", result = False}}
-}
