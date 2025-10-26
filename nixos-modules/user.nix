{ user, ... }:

{
  users.users = {

    user = {
      initialPassword = "1234";
      isNormalUser = true;
      extraGroups = [ "wheel" ];
    };

  };
}
