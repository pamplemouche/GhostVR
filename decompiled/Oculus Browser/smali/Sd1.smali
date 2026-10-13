.class public LSd1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LMd1;


# instance fields
.field public final synthetic w:LTd1;


# direct methods
.method public constructor <init>(LTd1;)V
    .locals 0

    .line 1
    iput-object p1, p0, LSd1;->w:LTd1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LNd1;II)V
    .locals 0

    .line 1
    iget-object p1, p0, LSd1;->w:LTd1;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public b(LNd1;II)V
    .locals 0

    .line 1
    iget-object p1, p0, LSd1;->w:LTd1;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
