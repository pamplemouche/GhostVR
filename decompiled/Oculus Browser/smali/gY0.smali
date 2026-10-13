.class public LgY0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic w:LjY0;


# direct methods
.method public constructor <init>(LjY0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LgY0;->w:LjY0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, LgY0;->w:LjY0;

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, LjY0;->a([I)V

    return-void
.end method
