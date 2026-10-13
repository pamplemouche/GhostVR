.class final Lcom/facebook/secure/logger/IntentLoggerHelper$1;
.super Ljava/lang/Object;
.source "IntentLoggerHelper.java"

# interfaces
.implements Lcom/facebook/secure/logger/IntentLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/secure/logger/IntentLoggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logIntent(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "endpointName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 12
    return-void
.end method
