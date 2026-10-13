.class public Lcom/facebook/quicklog/QPLDefaultNameProvider;
.super Ljava/lang/Object;
.source "QPLDefaultNameProvider.java"

# interfaces
.implements Lcom/facebook/quicklog/QuicklogNameProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-static {p1}, Lcom/facebook/quicklog/identifiers/ActionId;->getActionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarkerName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-static {p1}, Lcom/facebook/quicklog/identifiers/DebugUtils;->getMarkerName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
