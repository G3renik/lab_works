public class Laba_1 {
    public static void main(String[] args)
    {
        short[] e1 = firstTask();
        float[] x = secondTask();
        double[][] e2 = thirdTask(e1, x);

        printArray(e2);
    }

    public static short[] firstTask()
    {
        int number_of_elements = (22 - 2) / 2 + 1;
        short[] e = new short[number_of_elements];
        for (int i = 0; i < number_of_elements ; ++i)
        {
            e[i] = (short) (22 - i * 2);
        }
        return e;
    }

    public static float[] secondTask()
    {
        float[] x = new float[18];
        for (int i = 0; i < 18; ++i)
        {
            x[i] = (float) (-11.0 + Math.random() * (15.0 - (-11.0)));
        }
        return x;
    }

    public static double[][] thirdTask(short[] e1, float[] x)
    {
        double[][] e2 = new double[11][18];
        for (int i = 0; i < 11; ++i)
        {
            for (int j = 0; j < 18; ++j)
            {
                switch (e1[i])
                {
                case 16:
                    e2[i][j] = Math.log(Math.sqrt(Math.pow(Math.sin(x[j]), 2)));
                    break;
                case 2:
                case 8:
                case 10:
                case 12:
                case 14:
                    e2[i][j] = Math.pow(2*Math.log(3.0 / (Math.PI + Math.abs(x[j]))), Math.log(Math.abs(x[j])));
                    break;
                default:
                    // Основание степени. Арктангенс e в степени кубического корня из 3 по основанию к -e в степени x
                    double base = Math.atan(Math.pow(Math.E, Math.cbrt(-Math.pow(Math.E, x[j]))));
                    // Первая часть степени. Корень из 3 степени
                    double powerPart1 = Math.cbrt(Math.log(Math.pow(Math.cos(x[j]), 2)));
                    // Вторая часть степени
                    double powerPart2 = 1 - Math.pow(Math.atan(Math.pow(Math.E, -Math.abs(x[j]))) 
                        * (Math.PI + Math.tan(Math.atan((x[j] + 2 ) / 26))), 2);
                    // Обе части объединяем в одну
                    double power = powerPart1 * powerPart2;

                    e2[i][j] = Math.pow(base, power);
                    
                    break;
                }
            }
        }

        return e2;
    }
    // 4 задание
    public static void printArray(double[][] e)
    {
        for (int i = 0; i < 11; ++i)
        {
            for (int j = 0; j < 18; ++j)
            {
                System.out.printf("%.3f ", e[i][j]);
            }
            System.out.println();
        }
    }

    // Для проверки 1 и 2
    public static void printArray(short[] args)
    {
        for (short num : args)
        {
            System.out.println(num);
        }
    }
    public static void printArray(float[] args)
    {
        for (float num : args)
        {
            System.out.println(num);
        }
    }
}
