switch (state)
{
    // Fade to black
    case 0:
        alpha += 0.08;

        if (alpha >= 1)
        {
            alpha = 1;
            state = 1;
            timer = 0;

            // Set morning
            global.day_time = 0.25;
        }
        break;


    // Show "Day X"
    case 1:
        timer++;

        if (timer >= 60) // 1 second
        {
            state = 2;
        }
        break;


    // Fade back to the game
    case 2:
        alpha -= 0.05;

        if (alpha <= 0)
        {
            alpha = 0;
            instance_destroy();
        }
        break;
}

