.class public Lcom/oculus/modules/VolumeModuleImpl$SettingsContentObserver;
.super Landroid/database/ContentObserver;
.source "VolumeModuleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/VolumeModuleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/VolumeModuleImpl;


# direct methods
.method public constructor <init>(Lcom/oculus/modules/VolumeModuleImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/VolumeModuleImpl;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/oculus/modules/VolumeModuleImpl$SettingsContentObserver;->this$0:Lcom/oculus/modules/VolumeModuleImpl;

    .line 96
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 97
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 107
    iget-object v0, p0, Lcom/oculus/modules/VolumeModuleImpl$SettingsContentObserver;->this$0:Lcom/oculus/modules/VolumeModuleImpl;

    invoke-static {v0}, Lcom/oculus/modules/VolumeModuleImpl;->access$000(Lcom/oculus/modules/VolumeModuleImpl;)V

    .line 108
    return-void
.end method
