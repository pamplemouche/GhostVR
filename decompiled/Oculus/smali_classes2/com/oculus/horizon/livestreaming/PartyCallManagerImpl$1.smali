.class Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$1;
.super Landroid/database/ContentObserver;
.source "PartyCallManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;-><init>(Landroid/content/Context;Landroid/app/NotificationManager;Lcom/facebook/mobileconfig/factory/MobileConfig;Lcom/oculus/horizon/profile/UserProfileHelper;Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;Lcom/oculus/horizon/platformplugin/PlatformPluginManager;Lcom/oculus/horizon/parties/api/PartyMethods;Lcom/oculus/horizon/social/SocialUtils;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$1;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$1;->onChange(ZLandroid/net/Uri;)V

    .line 133
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .prologue
    .line 139
    invoke-static {}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received notification of party change."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl$1;->this$0:Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;

    invoke-virtual {v0}, Lcom/oculus/horizon/livestreaming/PartyCallManagerImpl;->refreshPartyStatus()V

    .line 138
    return-void
.end method
