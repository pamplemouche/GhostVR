.class public final synthetic LKA;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LoB;


# static fields
.field public static final a:LoB;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LKA;

    invoke-direct {v0}, LKA;-><init>()V

    sput-object v0, LKA;->a:LoB;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, LcB;->a(Landroid/os/IBinder;)LdB;

    move-result-object p1

    return-object p1
.end method
