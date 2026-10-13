.class public LCd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic w:LDd;


# direct methods
.method public constructor <init>(LDd;)V
    .locals 0

    .line 1
    iput-object p1, p0, LCd;->w:LDd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, LCd;->w:LDd;

    invoke-virtual {v0}, LDd;->c()V

    return-void
.end method
