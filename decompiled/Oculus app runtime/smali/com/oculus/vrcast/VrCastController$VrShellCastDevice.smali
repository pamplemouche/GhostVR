.class public Lcom/oculus/vrcast/VrCastController$VrShellCastDevice;
.super Ljava/lang/Object;
.source "VrCastController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrcast/VrCastController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VrShellCastDevice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;
    }
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public state:Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;

.field public type:Lcom/oculus/vrcast/VrCastController$DeviceType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/vrcast/VrCastController$VrShellCastDevice$State;Lcom/oculus/vrcast/VrCastController$DeviceType;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Stub!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
