.class public final synthetic LCF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:LGF0;

.field public final x:Landroid/content/Context;


# direct methods
.method public constructor <init>(LGF0;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LCF0;->w:LGF0;

    iput-object p2, p0, LCF0;->x:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, LCF0;->w:LGF0;

    iget-object v0, p0, LCF0;->x:Landroid/content/Context;

    .line 1
    invoke-virtual {p1}, LGF0;->b()V

    .line 2
    iget-object v1, p1, LGF0;->k:Ljava/lang/String;

    invoke-static {v1}, LhV;->a(Ljava/lang/String;)V

    .line 3
    iget p1, p1, LGF0;->d:I

    .line 4
    invoke-static {v0, p1}, LPE0;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
