.class public LmZ0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic w:LuZ0;


# direct methods
.method public constructor <init>(LuZ0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LmZ0;->w:LuZ0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, LmZ0;->w:LuZ0;

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, LuZ0;->b:Z

    .line 3
    iget-object p1, p1, LuZ0;->d:LrZ0;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 4
    check-cast p1, LTX0;

    invoke-virtual {p1, v0, v1}, LTX0;->a(D)V

    return-void
.end method
