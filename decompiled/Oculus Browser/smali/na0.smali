.class public abstract Lna0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:LUU;

.field public static final b:LUU;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LUU;

    const-string v1, "Signin_Android_GmsUserRecoverableDialogShown"

    invoke-direct {v0, v1}, LUU;-><init>(Ljava/lang/String;)V

    sput-object v0, Lna0;->a:LUU;

    .line 2
    new-instance v0, LUU;

    const-string v1, "Signin_Android_GmsUserRecoverableDialogAccepted"

    invoke-direct {v0, v1}, LUU;-><init>(Ljava/lang/String;)V

    sput-object v0, Lna0;->b:LUU;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;I)V
.end method
