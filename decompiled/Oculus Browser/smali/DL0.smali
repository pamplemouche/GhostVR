.class public final synthetic LDL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Lle1;

.field public final x:Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;


# direct methods
.method public constructor <init>(Lle1;Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LDL0;->w:Lle1;

    iput-object p2, p0, LDL0;->x:Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, LDL0;->w:Lle1;

    iget-object v0, p0, LDL0;->x:Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;

    .line 1
    sget-object v1, LqL0;->d:Lfe1;

    invoke-virtual {p1, v1}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/base/Callback;

    invoke-interface {p1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
