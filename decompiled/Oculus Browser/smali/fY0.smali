.class public LfY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic w:Landroid/widget/ListView;

.field public final synthetic x:LjY0;


# direct methods
.method public constructor <init>(LjY0;Landroid/widget/ListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, LfY0;->x:LjY0;

    iput-object p2, p0, LfY0;->w:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, LfY0;->x:LjY0;

    iget-object p2, p0, LfY0;->w:Landroid/widget/ListView;

    invoke-static {p2}, LjY0;->a(Landroid/widget/ListView;)[I

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, LjY0;->a([I)V

    return-void
.end method
