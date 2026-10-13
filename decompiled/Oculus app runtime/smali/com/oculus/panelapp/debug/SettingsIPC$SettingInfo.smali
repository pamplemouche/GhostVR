.class public Lcom/oculus/panelapp/debug/SettingsIPC$SettingInfo;
.super Ljava/lang/Object;
.source "SettingsIPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/debug/SettingsIPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingInfo"
.end annotation


# instance fields
.field public category:Ljava/lang/String;

.field public currentSetting:Ljava/lang/String;

.field public inputHint:Lcom/oculus/panelapp/debug/SettingsIPC$InputHint;

.field public name:Ljava/lang/String;

.field public presets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public type:Lcom/oculus/panelapp/debug/SettingsIPC$SettingType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
