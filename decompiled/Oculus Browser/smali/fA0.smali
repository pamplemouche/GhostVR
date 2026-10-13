.class public LfA0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LkA0;


# instance fields
.field public final synthetic w:LjA0;


# direct methods
.method public constructor <init>(LjA0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LfA0;->w:LjA0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 1
    iget-object p1, p0, LfA0;->w:LjA0;

    const/4 p2, 0x2

    .line 2
    iput p2, p1, LjA0;->a:I

    .line 3
    iget-object p2, p1, LjA0;->e:LaA0;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1}, LjA0;->b()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, LjA0;->c()V

    :cond_1
    :goto_0
    return-void
.end method
