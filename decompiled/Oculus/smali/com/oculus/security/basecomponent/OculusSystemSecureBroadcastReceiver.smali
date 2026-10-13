.class public abstract Lcom/oculus/security/basecomponent/OculusSystemSecureBroadcastReceiver;
.super Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;
.source "OculusSystemSecureBroadcastReceiver.java"


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;-><init>([Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public bridge synthetic setIntentFilter(Landroid/content/IntentFilter;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/oculus/security/basecomponent/OculusSecureBroadcastReceiverBase;->setIntentFilter(Landroid/content/IntentFilter;)V

    return-void
.end method
