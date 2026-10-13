.class public Lcom/oculus/horizon/api/twofac/TwoFactorMethod;
.super Ljava/lang/Object;
.source "TwoFactorMethod.java"


# instance fields
.field public enter_code_option:Ljava/lang/Boolean;

.field public id:Ljava/lang/String;

.field public instructions:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public label:Ljava/lang/String;

.field public resend_text:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public send_option:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
