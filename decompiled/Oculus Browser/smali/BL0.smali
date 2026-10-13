.class public final synthetic LBL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lne1;


# static fields
.field public static final a:Lne1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LBL0;

    invoke-direct {v0}, LBL0;-><init>()V

    sput-object v0, LBL0;->a:Lne1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lle1;

    check-cast p2, Landroid/view/View;

    check-cast p3, LUd1;

    .line 1
    sget-object v0, LqL0;->b:Lfe1;

    invoke-virtual {p1, v0}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;

    .line 2
    sget-object v1, LqL0;->d:Lfe1;

    if-ne p3, v1, :cond_0

    .line 3
    new-instance p3, LDL0;

    invoke-direct {p3, p1, v0}, LDL0;-><init>(Lle1;Lorg/chromium/chrome/browser/touch_to_fill/data/Credential;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, LqL0;->a:Lke1;

    if-eq p3, p1, :cond_1

    sget-object p1, LqL0;->c:Lfe1;

    if-eq p3, p1, :cond_1

    sget-object p1, LqL0;->b:Lfe1;

    :cond_1
    :goto_0
    return-void
.end method
