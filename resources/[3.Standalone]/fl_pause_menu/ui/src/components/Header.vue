<template>
    <div class="header">
        <div class="players_header_text">
            <div class="animate__animated animate__slideInUp" style="width: fit-content; height: 60px; display: flex; justify-content: center; align-items: center; font-weight: 600;">
                {{ title }}
            </div>
        </div>
    </div>
    <div class="players_header">
        <div class="players_header_text">
            <div class="animate__animated animate__lightSpeedInLeft animate__delay-1s" style="font-weight: 500;" v-if="this.language=='en'">
                Vous êtes actuellement <span> {{ players }} joueurs </span> en ville !
            </div>
            <div class="animate__animated animate__lightSpeedInLeft animate__delay-1s" style="font-weight: 500;" v-else>
                Tout de suite <span> {{ players }} joueur </span> disponible en ville !
            </div>
        </div>
    </div>
</template>

<script>
    export default{
        name: 'Header',
        props:{
            title: String,
            players: Number,
            language: String,
        }
    }
</script>

<style scoped>
.header{
    width: 87%;
    height: 60px;
    /* background-color: rgba(255, 255, 255, 0.6); */
    background-color: white;
    display: flex;
    justify-content: center;
    align-items: center;
    font-weight: 700;
    font-size: 30px;
    text-transform: uppercase;
    color: var(--bg_color);
    transform: skew(-20deg);
    margin-left: 28px;
}
.players_header{
    width: 87%;
    height: 30px;
    /* background-color: rgba(255, 255, 255, 0.6); */
    margin-left: 10px;
    background-color: white;
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 5px 10px;
    transform: skew(-20deg);
    overflow: hidden;
}
.players_header_text{
    width: 85%;
    text-align: center;
    overflow: hidden;
    display: flex;
    justify-content: center;
    align-items: center;
}
span{
    color: var(--bg_color);
    font-weight: 600;
}
</style>