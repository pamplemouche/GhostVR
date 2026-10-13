.class public Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequests;
.super Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;
.source "SocialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendRequests"
.end annotation


# instance fields
.field public final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/social/model/FriendRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/social/model/FriendRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIEND_REQUEST:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$ListComponent;-><init>(Lcom/oculus/horizon/legacy/social/adapters/ViewType;)V

    .line 314
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequests;->list:Ljava/util/List;

    .line 315
    return-void
.end method


# virtual methods
.method public getViewType()Lcom/oculus/horizon/legacy/social/adapters/ViewType;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter$FriendRequests;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 328
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIEND_REQUESTS:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    :goto_0
    return-object v0

    .line 322
    :pswitch_0
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->EMPTY:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    goto :goto_0

    .line 325
    :pswitch_1
    sget-object v0, Lcom/oculus/horizon/legacy/social/adapters/ViewType;->FRIEND_REQUEST:Lcom/oculus/horizon/legacy/social/adapters/ViewType;

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
