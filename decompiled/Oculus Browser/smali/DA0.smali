.class public LDA0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LiA0;


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;)V
    .locals 0

    .line 1
    iput-object p1, p0, LDA0;->a:Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, LDA0;->a:Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;

    invoke-virtual {v0}, Lz2;->l()LD2;

    move-result-object v0

    return-object v0
.end method
