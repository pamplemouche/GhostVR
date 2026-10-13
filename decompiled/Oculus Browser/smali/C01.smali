.class public abstract LC01;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final w:LB01;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LB01;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LB01;-><init>(LA01;)V

    sput-object v0, LC01;->w:LB01;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract j()V
.end method

.method public abstract k()Z
.end method

.method public abstract l()Z
.end method
