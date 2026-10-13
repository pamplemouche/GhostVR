.class public final synthetic LlE0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:LnE0;


# direct methods
.method public constructor <init>(LnE0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LlE0;->w:LnE0;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, LlE0;->w:LnE0;

    .line 1
    invoke-virtual {p1}, Lz2;->l()LD2;

    move-result-object p1

    invoke-static {p1}, Lsy0;->a(Landroid/content/Context;)V

    return-void
.end method
