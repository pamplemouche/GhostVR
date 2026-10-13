.class public LFG0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:LGG0;


# direct methods
.method public constructor <init>(LGG0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LFG0;->w:LGG0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, LFG0;->w:LGG0;

    iget-object p1, p1, LGG0;->x:LKG0;

    invoke-static {p1}, LKG0;->a(LKG0;)V

    return-void
.end method
