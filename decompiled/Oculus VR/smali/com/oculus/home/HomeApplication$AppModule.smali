.class Lcom/oculus/home/HomeApplication$AppModule;
.super Lcom/facebook/inject/AbstractPrivateModule;
.source "HomeApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/home/HomeApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppModule"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/facebook/inject/AbstractPrivateModule;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/home/HomeApplication$1;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/oculus/home/HomeApplication$AppModule;-><init>()V

    return-void
.end method
