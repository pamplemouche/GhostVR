.class public final synthetic LDy0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Landroid/support/v7/widget/SearchView;

.field public final x:Landroid/view/MenuItem;

.field public final y:Landroid/app/Activity;

.field public final z:LHy0;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/SearchView;Landroid/view/MenuItem;Landroid/app/Activity;LHy0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDy0;->w:Landroid/support/v7/widget/SearchView;

    iput-object p2, p0, LDy0;->x:Landroid/view/MenuItem;

    iput-object p3, p0, LDy0;->y:Landroid/app/Activity;

    iput-object p4, p0, LDy0;->z:LHy0;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, LDy0;->w:Landroid/support/v7/widget/SearchView;

    iget-object v0, p0, LDy0;->x:Landroid/view/MenuItem;

    iget-object v1, p0, LDy0;->y:Landroid/app/Activity;

    iget-object v2, p0, LDy0;->z:LHy0;

    const/4 v3, 0x0

    const-string v4, ""

    .line 1
    invoke-virtual {p1, v4, v3}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/CharSequence;Z)V

    .line 2
    invoke-static {v0, v4, v1}, LIy0;->a(Landroid/view/MenuItem;Ljava/lang/String;Landroid/app/Activity;)V

    .line 3
    invoke-interface {v2, v4}, LHy0;->a(Ljava/lang/String;)V

    return-void
.end method
