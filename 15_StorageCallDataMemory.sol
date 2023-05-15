// SPDX-License-Identifier: MIT
    pragma solidity ^0.8.17;

    contract StorageCallDataMemory {
        /*

        storage: store on blockchain,
         -> en yüksek maliyete sahip yapıdır.

        memory: geçici olarak depolanır,işi bitince silinir.Tüm veri tiplerinde kullanılır.
          -> storage tipine göre daha az maliyetlidir.function da devreye girer.

        call data:fonksiyonlaradaki argümente karşılıktır.Sadece okunabilir işlem için kullanılır.
        Özel bir bellek bölgesidir ve sadece read işlemi için kulanılır.
        ->memory tipine göre daha az maliyetlidir.

        az maliyetliden çok maliyetliye göre sıralama:
        calldata < memory<storage

        String.array,struct ifadelerin memory ile tanımlanması gerekir.

        String -> bellek açısından ve gas maliyeti açısından.
        pahalı o yüzden dikkatli kullanmak lazım.

        memory ile calldata benzer işlemler için kullanılır. 36 satırda olduğu gibi

        */

        uint storedData;// storage bölgesinde depolanır.
        string  public name; // storage

        struct Person {//storage
            string name;
        }

        function setName(string calldata  _name) public {
             name = _name;
        }
    }