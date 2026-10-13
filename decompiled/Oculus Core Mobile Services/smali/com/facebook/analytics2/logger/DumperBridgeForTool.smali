.class public Lcom/facebook/analytics2/logger/DumperBridgeForTool;
.super Ljava/lang/Object;
.source "DumperBridgeForTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/DumperBridgeForTool$Priority;
    }
.end annotation


# instance fields
.field private final mAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/analytics2/logger/Analytics2Logger;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/facebook/analytics2/logger/DumperBridgeForTool;->mAnalytics2Logger:Lcom/facebook/analytics2/logger/Analytics2Logger;

    .line 31
    return-void
.end method
