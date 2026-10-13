.class public LKB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic w:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(LNB0;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p2, p0, LKB0;->w:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget-object p1, Lrc1;->x:Lrc1;

    .line 2
    iget-object v0, p0, LKB0;->w:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lrc1;->b(Landroid/view/View;)V

    return-void
.end method
