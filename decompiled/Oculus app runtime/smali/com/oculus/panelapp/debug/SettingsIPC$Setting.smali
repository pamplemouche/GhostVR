.class public Lcom/oculus/panelapp/debug/SettingsIPC$Setting;
.super Ljava/lang/Object;
.source "SettingsIPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/SettingsIPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Setting"
.end annotation


# instance fields
.field private mInfo:Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;

.field private mIpc:Lcom/oculus/panelapp/debug/SettingsIPC;


# direct methods
.method public constructor <init>(Lcom/oculus/panelapp/debug/SettingsIPC;Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->mInfo:Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;

    .line 122
    iput-object p1, p0, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->mIpc:Lcom/oculus/panelapp/debug/SettingsIPC;

    return-void
.end method


# virtual methods
.method public bind(Lcom/oculus/panelapp/debug/SettingsIPC$BiConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/panelapp/debug/SettingsIPC$BiConsumer<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->mIpc:Lcom/oculus/panelapp/debug/SettingsIPC;

    iget-object v1, p0, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->mInfo:Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;

    iget-object v1, v1, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->category:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->mInfo:Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;

    iget-object v2, v2, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/oculus/panelapp/debug/SettingsIPC;->bindSetting(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/panelapp/debug/SettingsIPC$BiConsumer;)V

    return-void
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->mInfo:Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getInputHint()Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->mInfo:Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->inputHint:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->mInfo:Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPresets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->mInfo:Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->presets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSetting()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->mIpc:Lcom/oculus/panelapp/debug/SettingsIPC;

    iget-object v1, p0, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->mInfo:Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;

    iget-object v1, v1, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->category:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->mInfo:Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;

    iget-object v2, v2, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/panelapp/debug/SettingsIPC;->getSetting(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getType()Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->mInfo:Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->type:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;

    return-object v0
.end method

.method public setSetting(Ljava/lang/String;)V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->mInfo:Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;

    iput-object p1, v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->currentSetting:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->mIpc:Lcom/oculus/panelapp/debug/SettingsIPC;

    iget-object v0, v0, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->category:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->mInfo:Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;

    iget-object v2, v2, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, p1}, Lcom/oculus/panelapp/debug/SettingsIPC;->setSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unbind()V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->mIpc:Lcom/oculus/panelapp/debug/SettingsIPC;

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->mInfo:Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;

    iget-object v1, v1, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->category:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/panelapp/debug/SettingsIPC$Setting;->mInfo:Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;

    iget-object v2, v2, Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/panelapp/debug/SettingsIPC;->unbindSetting(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
