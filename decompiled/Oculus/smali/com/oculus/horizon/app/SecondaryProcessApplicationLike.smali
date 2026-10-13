.class public Lcom/oculus/horizon/app/SecondaryProcessApplicationLike;
.super Ljava/lang/Object;
.source "SecondaryProcessApplicationLike.java"

# interfaces
.implements Lcom/oculus/base/app/ApplicationLike;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Application;)V
    .locals 2

    .prologue
    .line 20
    const-string v0, "1437758943160428"

    const-string v1, "Horizon"

    invoke-static {p1, v0, v1}, Lcom/oculus/errorreporting/ErrorReporter;->initCrashReporting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method
