.class public final synthetic LsM0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Landroid/view/ViewGroup;

.field public final x:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LsM0;->w:Landroid/view/ViewGroup;

    iput p2, p0, LsM0;->x:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, LsM0;->w:Landroid/view/ViewGroup;

    iget v1, p0, LsM0;->x:I

    .line 1
    check-cast v0, Landroid/widget/ListView;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method
