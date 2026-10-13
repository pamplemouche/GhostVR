.class Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$Item;
.super Ljava/lang/Object;
.source "MediaRouteCastDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field private final mData:Ljava/lang/Object;

.field private final mType:I

.field final synthetic this$1:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1009
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$Item;->this$1:Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1010
    iput-object p2, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$Item;->mData:Ljava/lang/Object;

    .line 1011
    iput p3, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$Item;->mType:I

    .line 1012
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$Item;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1019
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$RecyclerAdapter$Item;->mType:I

    return v0
.end method
