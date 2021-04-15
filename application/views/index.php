<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?= base_url() ?>static/index.css">
    <title>PHP | Leads and Clients</title>
</head>
<body>
    <section>
        <!-- 
            Declaring form with CSRD protection
        -->
        <?php  $attributes = array("role" => "form"); echo form_open("searchPlayers", $attributes);  ?>
            <h3>Search Players</h3>
            <input type="text" class="player_name" name="player_name" value="<?php if($this->session->userdata("player_name") != NULL) echo $this->session->userdata("player_name"); ?>" placeholder="Player Name">
            <label><input type="checkbox" name="female" value="Female" <?php if($this->session->userdata("checkbox_female") != NULL) echo "checked"; ?>> Female</label>
            <label><input type="checkbox" name="male" value="Male" <?php if($this->session->userdata("checkbox_male") != NULL) echo "checked"; ?>> Male</label>
            <p>Sports</p>
            <label><input type="checkbox" name="basketball" value="Basketball" <?php if($this->session->userdata("checkbox_basketball") != NULL) echo "checked"; ?>> Basketball</label>
            <label><input type="checkbox" name="volleyball" value="Volleyball" <?php if($this->session->userdata("checkbox_volleyball") != NULL) echo "checked"; ?>> Volleyball</label>
            <label><input type="checkbox" name="baseball" value="Baseball" <?php if($this->session->userdata("checkbox_baseball") != NULL) echo "checked"; ?>> Baseball</label>
            <label><input type="checkbox" name="soccer" value="Soccer" <?php if($this->session->userdata("checkbox_soccer") != NULL) echo "checked"; ?>> Soccer</label>
            <label><input type="checkbox" name="football" value="Football" <?php if($this->session->userdata("checkbox_football") != NULL) echo "checked"; ?>> Football</label>
            <button type="submit">Search</button>
        </form>
        <div class="pictures_wrapper">
<?php       if($this->session->userdata("players") == "None"){ ?>
                <h3>No Results</h3>
<?php       }
            else{
?>
            <!-- 
                Loop through players session
            -->
<?php           foreach($this->session->userdata("players") AS $key => $player){ ?>
                    <div>
                        <img src="<?= $player["image"] ?>" alt="<?= $player["player_name"] ?>">
                        <p><?= $player["player_name"] ?></p>
                    </div>
<?php           }
            }
?>
        </div>
    </section>
</body>
</html>