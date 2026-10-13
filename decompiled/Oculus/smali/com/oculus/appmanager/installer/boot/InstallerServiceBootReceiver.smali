.class public Lcom/oculus/appmanager/installer/boot/InstallerServiceBootReceiver;
.super Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;
.source "InstallerServiceBootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    new-instance v1, Lcom/oculus/appmanager/installer/boot/BootCompletedAction;

    invoke-direct {v1}, Lcom/oculus/appmanager/installer/boot/BootCompletedAction;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/facebook/secure/receiver/DynamicSecureBroadcastReceiver;-><init>(Ljava/lang/String;Lcom/facebook/secure/receiver/ActionReceiver;)V

    .line 12
    return-void
.end method
