.class public LnR0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:LpR0;


# direct methods
.method public constructor <init>(LpR0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LnR0;->w:LpR0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, LnR0;->w:LpR0;

    .line 2
    iget-object p1, p1, LpR0;->r0:Landroid/widget/EditText;

    const-string v0, ""

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
