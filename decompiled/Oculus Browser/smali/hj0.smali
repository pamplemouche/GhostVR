.class public final synthetic Lhj0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final w:Ljj0;


# direct methods
.method public constructor <init>(Ljj0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhj0;->w:Ljj0;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lhj0;->w:Ljj0;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 1
    invoke-static/range {v0 .. v5}, Ljj0;->a(Ljj0;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
