.class public final synthetic LFy0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Landroid/view/MenuItem;

.field public final x:Landroid/app/Activity;

.field public final y:LHy0;


# direct methods
.method public constructor <init>(Landroid/view/MenuItem;Landroid/app/Activity;LHy0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LFy0;->w:Landroid/view/MenuItem;

    iput-object p2, p0, LFy0;->x:Landroid/app/Activity;

    iput-object p3, p0, LFy0;->y:LHy0;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, LFy0;->w:Landroid/view/MenuItem;

    iget-object v0, p0, LFy0;->x:Landroid/app/Activity;

    iget-object v1, p0, LFy0;->y:LHy0;

    const-string v2, ""

    .line 1
    invoke-static {p1, v2, v0}, LIy0;->a(Landroid/view/MenuItem;Ljava/lang/String;Landroid/app/Activity;)V

    .line 2
    invoke-interface {v1, v2}, LHy0;->a(Ljava/lang/String;)V

    return-void
.end method
