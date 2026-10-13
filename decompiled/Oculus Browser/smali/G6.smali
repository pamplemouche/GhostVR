.class public abstract LG6;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:LA6;

.field public static final b:LA6;

.field public static final c:LA6;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, LF6;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LF6;-><init>(LD6;Z)V

    sput-object v0, LG6;->a:LA6;

    .line 2
    new-instance v0, LF6;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, LF6;-><init>(LD6;Z)V

    sput-object v0, LG6;->b:LA6;

    .line 3
    new-instance v0, LF6;

    sget-object v1, LC6;->a:LC6;

    invoke-direct {v0, v1, v2}, LF6;-><init>(LD6;Z)V

    sput-object v0, LG6;->c:LA6;

    .line 4
    sget-object v0, LB6;->b:LB6;

    return-void
.end method

.method public static a(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public static b(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
