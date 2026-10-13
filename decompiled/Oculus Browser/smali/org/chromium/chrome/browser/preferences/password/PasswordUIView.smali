.class public final Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LtA0;


# instance fields
.field public a:J

.field public final b:LsA0;


# direct methods
.method public constructor <init>(LsA0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, LJ/N;->M$vBBTjo(Ljava/lang/Object;)J

    move-result-wide v0

    .line 3
    iput-wide v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;->a:J

    .line 4
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;->b:LsA0;

    return-void
.end method

.method public static createSavedPasswordEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/password/SavedPasswordEntry;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/preferences/password/SavedPasswordEntry;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/preferences/password/SavedPasswordEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private passwordExceptionListAvailable(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;->b:LsA0;

    invoke-interface {v0, p1}, LsA0;->b(I)V

    return-void
.end method

.method private passwordListAvailable(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;->b:LsA0;

    invoke-interface {v0, p1}, LsA0;->a(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;->a:J

    .line 2
    invoke-static {v0, v1, p0}, LJ/N;->MSmYwRJW(JLjava/lang/Object;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 3
    iget-wide v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;->a:J

    .line 4
    invoke-static {v0, v1, p0, p1}, LJ/N;->M4UsVaSz(JLjava/lang/Object;I)V

    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 2

    .line 7
    iget-wide v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;->a:J

    .line 8
    invoke-static {v0, v1, p0, p1, p2}, LJ/N;->M4uUcHLZ(JLjava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Lorg/chromium/base/IntStringCallback;Lorg/chromium/base/Callback;)V
    .locals 6

    .line 5
    iget-wide v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;->a:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 6
    invoke-static/range {v0 .. v5}, LJ/N;->M38LIn8K(JLjava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public b(I)Lorg/chromium/chrome/browser/preferences/password/SavedPasswordEntry;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;->a:J

    .line 2
    invoke-static {v0, v1, p0, p1}, LJ/N;->MODN5j5C(JLjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/preferences/password/SavedPasswordEntry;

    return-object p1
.end method

.method public c(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;->a:J

    .line 2
    invoke-static {v0, v1, p0, p1}, LJ/N;->M52t1k_l(JLjava/lang/Object;I)V

    return-void
.end method

.method public d(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordUIView;->a:J

    .line 2
    invoke-static {v0, v1, p0, p1}, LJ/N;->M93zJVoc(JLjava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
