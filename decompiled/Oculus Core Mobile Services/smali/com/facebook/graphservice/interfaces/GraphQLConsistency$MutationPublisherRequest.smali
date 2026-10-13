.class public Lcom/facebook/graphservice/interfaces/GraphQLConsistency$MutationPublisherRequest;
.super Ljava/lang/Object;
.source "GraphQLConsistency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/graphservice/interfaces/GraphQLConsistency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MutationPublisherRequest"
.end annotation


# instance fields
.field public mutationName:Ljava/lang/String;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
