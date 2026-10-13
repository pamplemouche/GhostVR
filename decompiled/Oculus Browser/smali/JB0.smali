.class public LJB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic w:Landroid/widget/EditText;

.field public final synthetic x:LNB0;


# direct methods
.method public constructor <init>(LNB0;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, LJB0;->x:LNB0;

    iput-object p2, p0, LJB0;->w:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1
    iget-object p1, p0, LJB0;->x:LNB0;

    .line 2
    iget-object p1, p1, LNB0;->i0:LMB0;

    .line 3
    iget-object p2, p0, LJB0;->w:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, LMB0;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void
.end method
