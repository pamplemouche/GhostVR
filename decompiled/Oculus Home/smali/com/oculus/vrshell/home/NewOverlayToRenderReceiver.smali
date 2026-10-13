.class public Lcom/oculus/vrshell/home/NewOverlayToRenderReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NewOverlayToRenderReceiver.java"


# static fields
.field private static final ABUSE_RECORDING_OVERLAYS_TYPE:Ljava/lang/String; = "abuse_recording"

.field private static final ACHIEVEMENT_OVERLAYS_TYPE:Ljava/lang/String; = "achievement"

.field private static final EMPTY_TYPE:Ljava/lang/String; = "empty"

.field private static final EXTRA_DISTANCE:Ljava/lang/String; = "distance"

.field private static final EXTRA_DURATION_MS:Ljava/lang/String; = "duration_ms"

.field private static final EXTRA_HEIGHT:Ljava/lang/String; = "height"

.field private static final EXTRA_LAYER_FLAGS:Ljava/lang/String; = "layer_flags"

.field private static final EXTRA_NEEDS_INPUTS:Ljava/lang/String; = "needs_inputs"

.field private static final EXTRA_PITCH:Ljava/lang/String; = "pitch"

.field private static final EXTRA_POSITION:Ljava/lang/String; = "position"

.field private static final EXTRA_POSITION_FIXED_TO_VIEW:I = 0x4

.field private static final EXTRA_POSITION_USER_YAW:Ljava/lang/String; = "user_yaw"

.field private static final EXTRA_WIDTH:Ljava/lang/String; = "width"

.field private static final EXTRA_YAW:Ljava/lang/String; = "yaw"

.field private static final LIVESTREAMING_OVERLAYS_TYPE:Ljava/lang/String; = "livestreaming_comments"

.field private static OVERLAYS_TYPE_KEY:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String;

.field private static final USER_BLOCK_OVERLAYS_TYPE:Ljava/lang/String; = "user_block"

.field private static final USER_UNBLOCK_OVERLAYS_TYPE:Ljava/lang/String; = "user_unblock"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/oculus/vrshell/home/NewOverlayToRenderReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/vrshell/home/NewOverlayToRenderReceiver;->TAG:Ljava/lang/String;

    .line 12
    const-string v0, "overlays_type"

    sput-object v0, Lcom/oculus/vrshell/home/NewOverlayToRenderReceiver;->OVERLAYS_TYPE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getDefaultIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 8
    .param p1, "incomingIntent"    # Landroid/content/Intent;

    .prologue
    .line 123
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.oculus.vrdriver.new_notification_to_show"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 127
    const-string v6, "duration_ms"

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    const-string v6, "yaw"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 129
    const-string v6, "pitch"

    const/high16 v7, -0x3dcc0000    # -45.0f

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 130
    const-string v6, "distance"

    const/high16 v7, 0x40400000    # 3.0f

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 133
    const/16 v3, 0x168

    .line 134
    .local v3, "homeSocialListItemWidth":I
    const/16 v2, 0x48

    .line 135
    .local v2, "homeSocialListItemHeight":I
    const/16 v5, 0x1e

    .line 136
    .local v5, "shadowRadius":I
    const/16 v1, 0xc

    .line 137
    .local v1, "headerPadding":I
    const/16 v0, 0x30

    .line 138
    .local v0, "headerHeight":I
    const-string v6, "width"

    const/16 v7, 0x1a4

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    const-string v6, "height"

    const/16 v7, 0xfc

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    return-object v4
.end method

.method private startAbuseRecordingOverlay(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "incomingIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0, p2}, Lcom/oculus/vrshell/home/NewOverlayToRenderReceiver;->getDefaultIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 95
    .local v1, "intent":Landroid/content/Intent;
    const/16 v0, 0xc8

    .line 96
    .local v0, "height":I
    const/16 v3, 0x140

    .line 99
    .local v3, "width":I
    const-string v4, "pitch"

    const/high16 v5, -0x3e600000    # -20.0f

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 100
    const-string v4, "yaw"

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 103
    const-string v4, "width"

    const/16 v5, 0x142

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const-string v4, "height"

    const/16 v5, 0xca

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    const-string v4, "needs_inputs"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x1

    .line 112
    .local v2, "shouldHeadlockOverlay":Z
    :cond_0
    if-eqz v2, :cond_1

    .line 113
    const-string v4, "layer_flags"

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    return-void
.end method

.method private startAchievementOverlay(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "incomingIntent"    # Landroid/content/Intent;

    .prologue
    .line 57
    invoke-direct {p0, p2}, Lcom/oculus/vrshell/home/NewOverlayToRenderReceiver;->getDefaultIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "duration_ms"

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method private startBlockOrUnblockOverlay(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "incomingIntent"    # Landroid/content/Intent;

    .prologue
    .line 67
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.oculus.vrdriver.new_notification_to_show"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 71
    const-string v3, "duration_ms"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    const-string v3, "pitch"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 73
    const-string v3, "distance"

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 76
    const-string v3, "position"

    const-string v4, "user_yaw"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const/16 v2, 0x280

    .line 81
    .local v2, "width":I
    const/16 v0, 0x154

    .line 86
    .local v0, "height":I
    const-string v3, "width"

    const/16 v4, 0x282

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    const-string v3, "height"

    const/16 v4, 0x156

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method private startEmptyOverlay(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "incomingIntent"    # Landroid/content/Intent;

    .prologue
    .line 119
    invoke-direct {p0, p2}, Lcom/oculus/vrshell/home/NewOverlayToRenderReceiver;->getDefaultIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method private startLivestreamingOverlay(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "incomingIntent"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-direct {p0, p2}, Lcom/oculus/vrshell/home/NewOverlayToRenderReceiver;->getDefaultIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "incomingIntent"    # Landroid/content/Intent;

    .prologue
    .line 39
    sget-object v1, Lcom/oculus/vrshell/home/NewOverlayToRenderReceiver;->OVERLAYS_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "overlaysType":Ljava/lang/String;
    const-string v1, "abuse_recording"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/oculus/vrshell/home/NewOverlayToRenderReceiver;->startAbuseRecordingOverlay(Landroid/content/Context;Landroid/content/Intent;)V

    .line 54
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string v1, "achievement"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/oculus/vrshell/home/NewOverlayToRenderReceiver;->startAchievementOverlay(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 44
    :cond_1
    const-string v1, "empty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/oculus/vrshell/home/NewOverlayToRenderReceiver;->startEmptyOverlay(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 46
    :cond_2
    const-string v1, "livestreaming_comments"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/oculus/vrshell/home/NewOverlayToRenderReceiver;->startLivestreamingOverlay(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 48
    :cond_3
    const-string v1, "user_block"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "user_unblock"

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 50
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/oculus/vrshell/home/NewOverlayToRenderReceiver;->startBlockOrUnblockOverlay(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 52
    :cond_5
    sget-object v1, Lcom/oculus/vrshell/home/NewOverlayToRenderReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown overlaysType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
