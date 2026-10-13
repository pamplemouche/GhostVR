.class public abstract Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$FetchInvitableFriendsCallback;
.super Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$BaseCallback;
.source "HorizonContentProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FetchInvitableFriendsCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/oculus/panelapp/anytimeui/HorizonContentProviderHelper$BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onSuccess(Ljava/util/ArrayList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/panelapp/anytimeui/FriendListRowData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
