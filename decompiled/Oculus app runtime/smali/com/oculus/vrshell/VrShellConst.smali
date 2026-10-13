.class public interface abstract Lcom/oculus/vrshell/VrShellConst;
.super Ljava/lang/Object;
.source "VrShellConst.java"


# static fields
.field public static final DO_NOT_DISTURB_MODE:Lcom/oculus/vrshell/sharedprefs/PrefKey;

.field public static final FB_APP_ID:Ljava/lang/String; = "1428395623868491"

.field public static final FB_APP_LOGIN_SECRET:Ljava/lang/String; = "f5edaab8f1624dd0d233446c959d1eda"

.field public static final FB_APP_NAME:Ljava/lang/String; = "VrShell"

.field public static final LAST_VOICE_PROMPT_TOAST:Lcom/oculus/vrshell/sharedprefs/PrefKey;

.field public static final LAST_VOICE_VOLUME_PROMPT_TOAST:Lcom/oculus/vrshell/sharedprefs/PrefKey;

.field public static final SEEN_LIVING_ROOM_BADGE:Lcom/oculus/vrshell/sharedprefs/PrefKey;

.field public static final SEEN_TV_BADGE:Lcom/oculus/vrshell/sharedprefs/PrefKey;

.field public static final VOICE_COMMAND_USAGE_COUNT:Lcom/oculus/vrshell/sharedprefs/PrefKey;

.field public static final VOICE_COMMAND_USAGE_TIME:Lcom/oculus/vrshell/sharedprefs/PrefKey;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->SETTINGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "do_not_disturb_mode"

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/VrShellConst;->DO_NOT_DISTURB_MODE:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 14
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->SETTINGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "last_voice_prompt_toast"

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/VrShellConst;->LAST_VOICE_PROMPT_TOAST:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 15
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->SETTINGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "last_voice_volume_prompt_toast"

    .line 16
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/VrShellConst;->LAST_VOICE_VOLUME_PROMPT_TOAST:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 17
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->FLAGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "seen_tv_badge"

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/VrShellConst;->SEEN_TV_BADGE:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 18
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->FLAGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "seen_living_room_badge"

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/VrShellConst;->SEEN_LIVING_ROOM_BADGE:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 19
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->SETTINGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "voice_command_usage_count_"

    .line 20
    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/VrShellConst;->VOICE_COMMAND_USAGE_COUNT:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    .line 21
    sget-object v0, Lcom/oculus/vrshell/sharedprefs/SharedKeys;->SETTINGS:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    const-string v1, "voice_command_usage_time_"

    invoke-virtual {v0, v1}, Lcom/oculus/vrshell/sharedprefs/PrefKey;->extend(Ljava/lang/String;)Lcom/oculus/vrshell/sharedprefs/PrefKey;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/VrShellConst;->VOICE_COMMAND_USAGE_TIME:Lcom/oculus/vrshell/sharedprefs/PrefKey;

    return-void
.end method
