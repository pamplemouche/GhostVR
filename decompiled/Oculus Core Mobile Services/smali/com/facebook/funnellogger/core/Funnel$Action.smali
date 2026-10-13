.class public Lcom/facebook/funnellogger/core/Funnel$Action;
.super Ljava/lang/Object;
.source "Funnel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/funnellogger/core/Funnel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field public final mName:Ljava/lang/String;

.field public final mPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mPayloadJsonString:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final mRelativeTimeStamp:I

.field public final mTag:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/facebook/funnellogger/core/PayloadBundle;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/funnellogger/core/PayloadBundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/facebook/funnellogger/core/Funnel$Action;->mName:Ljava/lang/String;

    .line 259
    iput p2, p0, Lcom/facebook/funnellogger/core/Funnel$Action;->mRelativeTimeStamp:I

    .line 260
    iput-object p3, p0, Lcom/facebook/funnellogger/core/Funnel$Action;->mTag:Ljava/lang/String;

    .line 261
    iput-object p4, p0, Lcom/facebook/funnellogger/core/Funnel$Action;->mPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/funnellogger/core/Funnel$Action;->mPayloadJsonString:Ljava/lang/String;

    .line 263
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/facebook/funnellogger/core/Funnel$Action;->mName:Ljava/lang/String;

    .line 271
    iput p2, p0, Lcom/facebook/funnellogger/core/Funnel$Action;->mRelativeTimeStamp:I

    .line 272
    iput-object p3, p0, Lcom/facebook/funnellogger/core/Funnel$Action;->mTag:Ljava/lang/String;

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/funnellogger/core/Funnel$Action;->mPayloadBundle:Lcom/facebook/funnellogger/core/PayloadBundle;

    .line 274
    iput-object p4, p0, Lcom/facebook/funnellogger/core/Funnel$Action;->mPayloadJsonString:Ljava/lang/String;

    .line 275
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/facebook/funnellogger/core/Funnel$Action;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRelativeTimeStamp()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/facebook/funnellogger/core/Funnel$Action;->mRelativeTimeStamp:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/facebook/funnellogger/core/Funnel$Action;->mTag:Ljava/lang/String;

    return-object v0
.end method
