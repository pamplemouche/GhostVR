.class public LTs0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic w:LWs0;


# direct methods
.method public constructor <init>(LWs0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LTs0;->w:LWs0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, LTs0;->w:LWs0;

    .line 2
    iget-object p1, p1, LWs0;->f:LDd1;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-interface {p1, v0, v1}, LDd1;->a(Lle1;I)V

    return-void
.end method
