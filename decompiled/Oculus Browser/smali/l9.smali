.class public Ll9;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ln7;


# instance fields
.field public final synthetic w:Lm9;


# direct methods
.method public constructor <init>(Lm9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll9;->w:Lm9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll9;->w:Lm9;

    invoke-virtual {v0, p1}, Lm9;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
