.class public abstract LsL0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lhe1;

.field public static final b:Lfe1;

.field public static final c:Lfe1;

.field public static final d:Lke1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lhe1;

    const-string v1, "visible"

    invoke-direct {v0, v1}, Lhe1;-><init>(Ljava/lang/String;)V

    sput-object v0, LsL0;->a:Lhe1;

    .line 2
    new-instance v0, Lfe1;

    const-string v1, "sheet_items"

    invoke-direct {v0, v1}, Lfe1;-><init>(Ljava/lang/String;)V

    sput-object v0, LsL0;->b:Lfe1;

    .line 3
    new-instance v0, Lfe1;

    const-string v1, "dismiss_handler"

    invoke-direct {v0, v1}, Lfe1;-><init>(Ljava/lang/String;)V

    sput-object v0, LsL0;->c:Lfe1;

    .line 4
    new-instance v0, Lke1;

    const-string v1, "on_click_manage"

    invoke-direct {v0, v1}, Lke1;-><init>(Ljava/lang/String;)V

    sput-object v0, LsL0;->d:Lke1;

    return-void
.end method

.method public static a(LPd1;)I
    .locals 0

    .line 1
    iget p0, p0, LPd1;->a:I

    return p0
.end method
