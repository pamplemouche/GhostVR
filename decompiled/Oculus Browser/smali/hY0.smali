.class public LhY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic w:Landroid/widget/ListView;

.field public final synthetic x:LjY0;


# direct methods
.method public constructor <init>(LjY0;Landroid/widget/ListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, LhY0;->x:LjY0;

    iput-object p2, p0, LhY0;->w:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, LhY0;->x:LjY0;

    iget-object p2, p0, LhY0;->w:Landroid/widget/ListView;

    invoke-static {p2}, LjY0;->a(Landroid/widget/ListView;)[I

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, LjY0;->a([I)V

    .line 3
    iget-object p1, p0, LhY0;->x:LjY0;

    .line 4
    iget-object p1, p1, LjY0;->a:Landroid/app/AlertDialog;

    .line 5
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
