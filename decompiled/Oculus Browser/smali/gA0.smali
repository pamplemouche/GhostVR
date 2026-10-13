.class public LgA0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic w:LjA0;


# direct methods
.method public constructor <init>(LjA0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LgA0;->w:LjA0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, LgA0;->w:LjA0;

    const/4 p2, 0x0

    .line 2
    iput p2, p1, LjA0;->a:I

    :cond_0
    return-void
.end method
