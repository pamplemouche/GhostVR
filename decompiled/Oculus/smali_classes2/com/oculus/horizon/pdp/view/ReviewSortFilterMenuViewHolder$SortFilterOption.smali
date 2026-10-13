.class public Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;
.super Ljava/lang/Object;
.source "ReviewSortFilterMenuViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortFilterOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;
    }
.end annotation


# instance fields
.field public data:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public name:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

.field public selected:Z


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;ZLjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;->name:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    .line 187
    iput-boolean p2, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;->selected:Z

    .line 188
    iput-object p3, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;->data:Ljava/lang/String;

    .line 189
    return-void
.end method
