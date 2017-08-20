using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections;

namespace hmwrk
{
    class Program
    {
        static void Main(string[] args)
        {
            //UserName ve PassWordu Daxil Edirik
            Console.WriteLine("UserNamenizi Daxil Edin");
            var UserName = Console.ReadLine();
            Console.WriteLine("PassWordunuzu Daxil Edin");
            var PassWord = Console.ReadLine();


            //Istifadeci Adinin Duzgun Olub Olamdigini Yoxluyuruq
            if (UserName == "admin" && PassWord == "admin")
            {
                Console.WriteLine("UserName ve PassWord Duzgundur \n");
                Console.WriteLine("Secimleri Gore Bilmek Ucun 6 -ya Basin");
                var count = Convert.ToInt32(Console.ReadLine());

                if (count == 6)
                {

                    Console.WriteLine("------------------------------");
                    Console.WriteLine("Daxil Ola Bileceyiniz Hisseler \n");
                    Console.WriteLine("1.XesteXana Sobeleri");
                    Console.WriteLine("2.XesteXana Hekimleri \n");
                    Console.WriteLine("Secmek Istediyiniz Hissenin Reqemini Yazin");
                }
                else
                {
                    Console.WriteLine("6 -ya Bas Demisdim");
                }


            }
            else
            {
                Console.WriteLine("UserName and PassWord isn't Correct");
            }

            //qara ekranda daha cox emeliyat aparmaq ucun (for dovr emeliyati) yaziriq
            for (int i = 0; i < 100000; i++)
            {
                //var string goturduyune gore tipini Convert edib (int - e ceviririk)
                var count = Convert.ToInt32(Console.ReadLine());


                //Sert Emeliyyatlarindan Istifade Edirik;
                if (count == 1)
                {
                    Console.WriteLine("Secdiyiniz Bolme -----Sobeler----- Bolmesidir:\n");

                    List<string> Sobeler = new List<string>();
                    //(List) Metodu ile  ile Siyahi  Yaradiriq

                    Sobeler.Add("1.1: Kordiologiya Sobesi");
                    Sobeler.Add("1.2: Ginekologiya Sobesi"); //Yazdiqlarimizi Gormek Ucun (Add) - Edirik
                    Sobeler.Add("1.3: Nevrologiya Sobesi");
                    Sobeler.Add("1.4: Urologiya Sobesi");

                    //(foreach) - ile (Add) Etdiklerimizi Ekrana Cixaririq
                    foreach (var Goster in Sobeler)
                    {
                        Console.WriteLine(Goster);
                    }


                    Console.WriteLine("Deyisiklik Etmek Ucun 5-e Basin \n");
                    var count5 = Convert.ToInt32(Console.ReadLine());

                    //Deyisiklik Etmek Ucun if -den Istifade Edirik;
                    if (count5 == 5)
                    {


                        Console.WriteLine("deyisiklik edin \n");

                        //etdiymiz Deyisikliyi Gormek Ucun (foreach) - dan Istifade Edirik
                        foreach (var item in Sobeler)
                        {
                            Console.WriteLine(item);

                        }

                        //Burada (Add) Emeliyyatini Edirik
                        Console.WriteLine("---------------");
                        Sobeler.Add(Console.ReadLine());
                        Console.WriteLine("-------------");


                        //Add Emeliyyatinin Neticesini Gormek Ucun (foreach)-dan Istifade Edirik
                        foreach (var item2 in Sobeler)
                        {
                            Console.WriteLine(item2);
                        }

                        Console.WriteLine("----------------");
                        Sobeler.Remove(Console.ReadLine());
                        Console.WriteLine("----------------");

                        foreach (var SobeleriGoster in Sobeler)
                        {
                            Console.WriteLine(SobeleriGoster);
                        }



                        Console.WriteLine("-----------------");
                        Console.WriteLine("Deysikilik Edildi");


                       


                        Console.WriteLine("Esas Menuynu Gormek Ucun 6 - ya Basin");
                        var count6 = Convert.ToInt32(Console.ReadLine());
                        if (count6 == 6)
                        {

                            Console.WriteLine("------------------------------");
                            Console.WriteLine("Daxil Ola Bileceyiniz Hisseler");
                            Console.WriteLine("1.Sobeler");
                            Console.WriteLine("2.Hekimler");
                            Console.WriteLine("Secmek Istediyiniz Hissenin Reqemini Yazin");
                        }


                    }

                    else if (count5 == 6)
                    {
                        Console.WriteLine("------------------------------");
                        Console.WriteLine("Daxil Ola Bileceyiniz Hisseler");
                        Console.WriteLine("1.Sobeler");
                        Console.WriteLine("2.Hekimler");
                        Console.WriteLine("Secmek Istediyiniz Hissenin Reqemini Yazin");

                    }



                }
                else if (count == 2)
                {
                    Console.WriteLine("Secdiyiniz Bolme ------Hekimler------- Bolmesidir \n");

                    List<string> Hekimler = new List<string>();

                    Hekimler.Add("1.4: Kordiologiya Hekimi - ID: 055");
                    Hekimler.Add("1.4: Ginekologiya Hekimi - ID: 055");
                    Hekimler.Add("1.4: Nevrologiya Hekimi - ID: 055");
                    Hekimler.Add("1.4: Urologiya Hekimi - ID: 055");

                    foreach (var HekimGoster in Hekimler)
                    {
                        Console.WriteLine(HekimGoster);
                    }

                    Console.WriteLine("Deyisiklik Etmek Ucun 5 - e Basin");
                    var count0 =Convert.ToInt32(Console.ReadLine());

                    if (count0 == 5)
                    {
                        Console.WriteLine("Deyisiklik Edin");

                        foreach (var HekimGoster2 in Hekimler)
                        {
                            Console.WriteLine(HekimGoster2);
                        }

                        //Burda (Remove) Emeliyyati Yerine Yetirilir;
                        Console.WriteLine("------------------");
                        Hekimler.Remove(Console.ReadLine());
                        Console.WriteLine("------------------");

                        //Remove Emeliyyatini Gormek Ucun (Foreach - dan Istifade Edirik)
                        foreach (var HekimGoster3 in Hekimler)
                        {
                            Console.WriteLine(HekimGoster3);
                        }

                        //Burada (Add) Emeliyati Yerine Yetirilir
                        Console.WriteLine("---------------------");
                        Hekimler.Add(Console.ReadLine() + " (Elave Edildi)");
                        Console.WriteLine("---------------------");

                        //Add Emeliyyatini Gormek Ucun (foreach-dan) Istifade Edikrik
                        foreach (var HekimGoster4 in Hekimler)
                        {
                            Console.WriteLine(HekimGoster4);
                        }
                        Console.WriteLine("-------------------\n");
                        Console.WriteLine("Deyisiklik Edildi");

                        Console.WriteLine("Secimlere Qayitmaq Ucun 7 - ye Basin ");
                        var count7 = Convert.ToInt32(Console.ReadLine());

                        if (count7 == 7)

                        {
                            Console.WriteLine("------------------------------");
                            Console.WriteLine("Daxil Ola Bileceyiniz Hisseler");
                            Console.WriteLine("1.Sobeler");
                            Console.WriteLine("2.Hekimler");
                            Console.WriteLine("Secmek Istediyiniz Hissenin Reqemini Yazin");
                        }

                    }
                    else if (count0 == 7)
                    {
                        Console.WriteLine("------------------------------");
                        Console.WriteLine("Daxil Ola Bileceyiniz Hisseler");
                        Console.WriteLine("1.Sobeler");
                        Console.WriteLine("2.Hekimler");
                        Console.WriteLine("Secmek Istediyiniz Hissenin Reqemini Yazin");
                    }
                }
            }
        }
    }
}
