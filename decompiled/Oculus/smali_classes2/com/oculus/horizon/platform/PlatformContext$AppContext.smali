.class public Lcom/oculus/horizon/platform/PlatformContext$AppContext;
.super Ljava/lang/Object;
.source "PlatformContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/platform/PlatformContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppContext"
.end annotation


# instance fields
.field public launchSource:Ljava/lang/String;

.field public launchType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
