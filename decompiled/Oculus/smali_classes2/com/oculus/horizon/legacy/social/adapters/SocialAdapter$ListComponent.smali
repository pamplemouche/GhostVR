.class public abstract Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;
.super Ljava/lang/Object;
.source "SocialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ListComponent"
.end annotation


# instance fields
.field private final type:Lcom/oculus/horizon/legacy/social/adapters/ViewType;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;->type:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    .line 210
    return-void
.end method


# virtual methods
.method public getViewType()Lcom/oculus/horizon/legacy/social/adapters/ViewType;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;->type:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    return-object v0
.end method
